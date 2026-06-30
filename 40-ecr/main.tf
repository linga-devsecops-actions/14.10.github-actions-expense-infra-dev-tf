resource "aws_ecr_repository" "backend" {
    name = "${var.project_name}/${var.environment}/backend"

    image_tag_mutability = "IMMUTABLE"
  ## possible vaules: MUTABEL ; IMMUTABLE   --- Default --> MUTABLE
  ## IMMUTABLE - When ever we update the tag then it will create new image
  ## MUTABLE   - When ever we update the tag then it will update/replace the existing image.

    image_scanning_configuration {
        scan_on_push = true
    }
    force_delete = true
}

resource "aws_ecr_repository" "frontend" {
    name = "${var.project_name}/${var.environment}/frontend"
    image_tag_mutability = "IMMUTABLE"

    image_scanning_configuration {
        scan_on_push = true
    }
    force_delete = true
}
