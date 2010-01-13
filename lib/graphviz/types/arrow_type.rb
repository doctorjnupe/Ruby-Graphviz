class GraphViz
  class Types
    class ArrowType < Common
      TYPELIST = [
        "normal", 
        "inv",
        "dot",
        "invdot",
        "odot",
        "invodot",
        "none",
        "tee",
        "empty",
        "invempty",
        "diamond",
        "odiamond",
        "ediamond",
        "crow",
        "box",
        "obox",
        "open",
        "halfopen",
        "vee"
      ]
      def check(data)
        unless TYPELIST.include?(data.to_s)
          raise ArgumentError, "Value `#{data}' not allowed for attribut with arrowType type!"
        end
        return data.to_s
      end
    end
  end
end