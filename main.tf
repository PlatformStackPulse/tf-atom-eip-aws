resource "aws_eip" "this" {
  count = module.this.enabled ? 1 : 0

  domain = "vpc"

  tags = merge(module.this.tags, { Name = module.this.id })
}
