resource "aws_cloudwatch_dashboard" "cloudwatch_dashboard" {
  dashboard_name = "${var.name}-${var.environment}-dashboard"

  dashboard_body = <<EOF
    {
      "widgets": [
        {
          "type":"metric",
          "x":12,
          "y":6,
          "width":12,
          "height":6,
          "properties": {
            "view":"timeSeries",
            "stacked":false,
            "metrics": [
              [
                "AWS/ECS",
                "MemoryUtilization",
                "ServiceName",
                "${var.service_name}",
                "ClusterName",
                "${var.cluster_name}",
                {"color": "#1f77b4" }
              ],
              [
                ".",
                "CPUUtilization",
                ".",
                ".",
                ".",
                ".",
                {"color":"#9467bd"}
              ]
            ],
            "region":"${var.region}",
            "period":300,
            "title":
            "Memory and CPU utilization",
            "yAxis": {
              "left": { "min":0, "max":100 }
            }
          }
        },
        {
          "type":"metric",
          "x":0,
          "y":6,
          "width":12,
          "height":6,
          "properties": {
            "view":"timeSeries",
            "stacked":true,
            "metrics": [
              [
                "AWS/ApplicationELB",
                "HTTPCode_Target_5XX_Count",
                "TargetGroup",
                "${var.target_group_arn}",
                "LoadBalancer",
                "${var.alb_arn}",
                {"period":60,"color":"#d62728","stat":"Sum"}
              ],
              [
                ".",
                "HTTPCode_Target_4XX_Count",
                ".",
                ".",
                ".",
                ".",
                {"period":60,"stat":"Sum","color":"#bcbd22"}
              ],
              [
                ".",
                "HTTPCode_Target_3XX_Count",
                ".",
                ".",
                ".",
                ".",
                {"period":60,"stat":"Sum","color":"#98df8a"}
              ],
              [
                ".",
                "HTTPCode_Target_2XX_Count",
                ".",
                ".",
                ".",
                ".",
                {"period":60,"stat":"Sum","color":"#2ca02c"}
              ]
            ],
            "region":"${var.region}",
            "title":"Container responses",
            "period":300,
            "yAxis":{
              "left":{"min":0}
            }
          }
        },
        {
          "type":"metric",
          "x":12,
          "y":0,
          "width":12,
          "height":6,
          "properties": {
            "view":"timeSeries",
            "stacked":false,
            "metrics": [
              [
                "AWS/ApplicationELB",
                "TargetResponseTime",
                "LoadBalancer",
                "${var.alb_arn}",
                {"period":60,"stat":"p50"}
              ],
              [
                "...",
                {"period":60,"stat":"p90","color":"#c5b0d5"}
              ],
              [
                "...",
                {"period":60,"stat":"p99","color":"#dbdb8d"}
              ]
            ],
            "region":"${var.region}",
            "period":300,
            "yAxis": {
              "left": {"min":0,"max":3}
            },
            "title":"Container response times"
          }
        },
        {
          "type":"metric",
          "x":12,
          "y":12,
          "width":12,
          "height":2,
          "properties": {
            "view":"singleValue",
            "metrics": [
              [
                "AWS/ApplicationELB",
                "HealthyHostCount",
                "TargetGroup",
                "${var.target_group_arn}",
                "LoadBalancer",
                "${var.alb_arn}",
                {"color":"#2ca02c","period":60}
              ],
              [
                ".",
                "UnHealthyHostCount",
                ".",
                ".",
                ".",
                ".",
                {"color":"#d62728","period":60}
              ]
            ],
          "region":"${var.region}",
          "period":300,
          "stacked":false}
        },
        {
          "type":"metric",
          "x":0,
          "y":0,
          "width":12,
          "height":6,
          "properties": {
            "view":"timeSeries",
            "stacked":true,
            "metrics": [
              [
                "AWS/ApplicationELB",
                "HTTPCode_Target_5XX_Count",
                "LoadBalancer",
                "${var.alb_arn}",
                {"period":60,"stat":"Sum","color":"#d62728"}
              ],
              [
                ".",
                "HTTPCode_Target_4XX_Count",
                ".",
                ".",
                {"period":60,"stat":"Sum","color":"#bcbd22"}
              ],
              [
                ".",
                "HTTPCode_Target_3XX_Count",
                ".",
                ".",
                {"period":60,"stat":"Sum","color":"#98df8a"}
              ],
              [
                ".",
                "HTTPCode_Target_2XX_Count",
                ".",
                ".",
                {"period":60,"stat":"Sum","color":"#2ca02c"}
              ]
            ],
            "region":"${var.region}",
            "title":"Load balancer responses",
            "period":300,
            "yAxis": {
              "left":{"min":0}
            }
          }
        }
      ]
    }
  EOF
}

