# UI页面交互变量，封装在结构体中

@reactive mutable struct PlotPage <: ReactiveModel

    value_plot::R{Int} = 0
    value_rm::R{Int} = 0

    plot_models::R{Vector{String}} = PLOT_MODEL
    model_choose::R{String} = "CrossPlot"

    symbol_types::R{Vector{String}} = SYMBOL_TYPE
    symbol_choose::R{String} = "circle"

    range_data::R{RangeData{Int}} = RangeData(1:100)

    isSuccess::R{String} = ""

    cross_plot_data::R{Vector{PlotData}} = []
    cross_plot_layout::R{PlotLayout} = PlotLayout(plot_bgcolor="#fff")

    heatmap_plot_data::R{Vector{PlotData}} = []
    heatmap_plot_layout::R{PlotLayout} = PlotLayout(plot_bgcolor="#fff")

end