cluster_name="eks-demo"
cluster_version="1.19"
subnets=["subnet-aaaa","subnet-bbbb","subnet-cccc"]
vpc_id="vpc-dddd"
assume_developer_role=["arn:aws:iam::111222333444:user/user1","arn:aws:iam::111222333444:role/role1"]
# create additional variables to specify additional users/roles for any additional roles you create for cluster access
