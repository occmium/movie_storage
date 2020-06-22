# frozen_string_literal: true

class FilmQueryService
  attr_reader :params, :scope

  def self.call(params, scope = Film.all.includes(:genres, :countries))
    new(params, scope).call
  end

  def initialize(params, scope = Film.all.includes(:genres, :countries))
    @params = params
    @scope = scope
  end

  def call
    filter_by_country
    filter_by_genre
    filter_by_name
    filter_by_rating
    filter_by_year
    order_by

    scope
  end

  private

  def filter_by_country
    @scope =
      if sanitized_countries.present?
        @scope.joins(:countries).where(
          'lower(countries.name) IN (?)', sanitized_countries
        )
      else
        @scope
      end
  end

  def filter_by_genre
    @scope =
      if sanitized_genres.present?
        @scope.joins(:genres).where(
          'lower(genres.name) IN (?)', sanitized_genres
        )
      else
        @scope
      end
  end

  def filter_by_name
    @scope =
      if params[:name].present?
        @scope.where(
          %w[name name_local].map { |field| "lower(#{field}) LIKE lower(:query)" }.join(' OR '),
          query: "%#{params[:name]}%"
        )
      else
        @scope
      end
  end

  def filter_by_rating
    @scope =
      if params[:rating].present?
        @scope.where('(rating) IN (?)', params[:rating])
      else
        @scope
      end
  end

  def filter_by_year
    @scope =
      if params[:year].present?
        @scope.where('(year) IN (?)', params[:year])
      else
        @scope
      end
  end

  def order_by
    @scope =
      if sort_by.present?
        @scope.order(sort_by => sort_order)
      else
        @scope
      end
  end

  def sort_by
    params[:sort_by].in?(%w[rating year]) ? params[:sort_by] : nil
  end

  def sort_order
    params[:sort_order].in?(%w[asc desc]) ? params[:sort_order] : 'asc'
  end

  def sanitized_countries
    return unless params[:countries].present?

    params[:countries].split(',').map(&:strip).map(&:presence).compact.map(&:downcase)
  end

  def sanitized_genres
    return unless params[:genres].present?

    params[:genres].split(',').map(&:strip).map(&:presence).compact.map(&:downcase)
  end
end
