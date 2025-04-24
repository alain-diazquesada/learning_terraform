# ##################################################################################
# # IMPORTS
# ##################################################################################
# 
# import {
# to = module.main.aws_vpc.this[0]
# id = "vpc-0660c016796a2ecbf" #VPC
# }
# 
# import {
# to = module.main.aws_subnet.public[0]
# id = "subnet-0ec6bdb15d147ff4c" #PublicSubnet1
# }
# 
# import {
# to = module.main.aws_subnet.public[1]
# id = "subnet-07c6674340ae7ebfe" #PublicSubnet2
# }
# 
# import {
# to = module.main.aws_internet_gateway.this[0]
# id = "igw-0f39750d39eeff2e0" #InternetGateway
# }
# 
# import {
# to = module.main.aws_route.public_internet_gateway[0]
# id = "rtb-0595d6c06592ac6d4_0.0.0.0/0" #DefaultPublicRoute
# }
# 
# import {
# to = module.main.aws_route_table.public[0]
# id = "rtb-0595d6c06592ac6d4" #PublicRouteTable
# }
# 
# import {
# to = module.main.aws_route_table_association.public[0]
# id = "subnet-0ec6bdb15d147ff4c/rtb-0595d6c06592ac6d4" #PublicSubnet1/PublicRouteTable
# }
# 
# import {
# to = module.main.aws_route_table_association.public[1]
# id = "subnet-07c6674340ae7ebfe/rtb-0595d6c06592ac6d4" #PublicSubnet2/PublicRouteTable
# }
# 
# import {
# to = aws_security_group.ingress
# id = "sg-054cff8e263083ed9" #NoIngressSecurityGroup
# }
