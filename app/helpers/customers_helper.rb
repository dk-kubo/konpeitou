module CustomersHelper
	def cus_family_title(family)
		count = family.count
		case count 
		when 1
			elem = '<th rowspan="2" class="title_cusfami" style="text-align:center;"><strong>家族情報</strong></th　rowspan="2">'

		when 2
			elem = '<th rowspan="3" class="title_cusfami" style="text-align:center;"><strong>家族情報</strong></th　rowspan="3">'

		when 3
			elem = '<th rowspan="4" class="title_cusfami" style="text-align:center;"><strong>家族情報</strong></th　rowspan="4">'

		when 4
			elem = '<th rowspan="5" class="title_cusfami" style="text-align:center;"><strong>家族情報</strong></th　rowspan="5">'

		when 5
			elem = '<th rowspan="6" class="title_cusfami" style="text-align:center;"><strong>家族情報</strong></th　rowspan="6">'
			
		when 6
			elem = '<th rowspan="7" class="title_cusfami" style="text-align:center;"><strong>家族情報</strong></th　rowspan="7">'

		when 7
			elem = '<th rowspan="8" class="title_cusfami" style="text-align:center;"><strong>家族情報</strong></th　rowspan="8">'

		when 8
			elem = '<th rowspan="9" class="title_cusfami" style="text-align:center;"><strong>家族情報</strong></th　rowspan="9">'

		when 9
			elem = '<th rowspan="10" class="title_cusfami" style="text-align:center;"><strong>家族情報</strong></th　rowspan="10">'

		when 10
			elem = '<th rowspan="11" class="title_cusfami" style="text-align:center;"><strong>家族情報</strong></th　rowspan="11">'

		else
			elem =''

		end
		elem.html_safe
	end
end
