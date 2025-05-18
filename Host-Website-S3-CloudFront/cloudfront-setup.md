
---

### ✅ 3. 📄

```markdown
# 🛠️ Step-by-Step: Setup CloudFront with S3 Static Website

## Step 1: Create S3 Bucket

- Go to AWS S3 Console
- Click "Create Bucket"
- Name it (e.g., `my-static-site`)
- **Uncheck** "Block all public access"
- Enable **Static Website Hosting**
  - Index document: `index.html`

---

## Step 2: Upload Files

- Upload your HTML/CSS/JS files to the bucket
- Example:
  - `index.html`
  - `style.css`

---

## Step 3: Set Bucket Policy

Replace `your-bucket-name` with your bucket name:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::your-bucket-name/*"
    }
  ]
}
