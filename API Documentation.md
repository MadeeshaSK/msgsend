# 📚 MsglyAPI - Complete API Documentation

**Base URL:** `https://msgsend.duckdns.org`

**Authentication:** All endpoints require an API key in the header
```json
{
  "Content-Type": "application/json",
  "x-api-key": "your-api-key-here"
}
```

---

## 📱 SMS Endpoints

### 1. Send Direct SMS Message
**Endpoint:** `POST /api/direct-message`

**Input:**
```json
{
  "phone": "+1234567890",
  "message": "Hello! This is a test message from our service."
}
```

**Output (Success):**
```json
{
  "success": true,
  "message": "Message sent successfully"
}
```

**Output (Error):**
```json
{
  "error": "Invalid phone number format",
  "success": false
}
```

### 2. Send Phone OTP
**Endpoint:** `POST /api/send-otp`

**Input:**
```json
{
  "phone": "+1234567890"
}
```

**Output (Success):**
```json
{
  "success": true,
  "message": "OTP sent successfully",
  "data": {
    "phone": "+1234567890",
    "expiresIn": 300
  }
}
```

**Output (Error):**
```json
{
  "error": "Phone number is required",
  "success": false
}
```

### 3. Resend Phone OTP
**Endpoint:** `POST /api/resend-otp`

**Input:**
```json
{
  "phone": "+1234567890"
}
```

**Output (Success):**
```json
{
  "success": true,
  "message": "OTP resent successfully",
  "data": {
    "phone": "+1234567890",
    "expiresIn": 300,
    "attemptCount": 2
  }
}
```

**Output (Error):**
```json
{
  "error": "Maximum resend attempts exceeded",
  "success": false
}
```

### 4. Verify Phone OTP
**Endpoint:** `POST /api/verify-otp`

**Input:**
```json
{
  "phone": "+1234567890",
  "otp": "123456"
}
```

**Output (Success):**
```json
{
  "success": true,
  "message": "OTP verified successfully",
  "data": {
    "phone": "+1234567890",
    "verified": true,
    "verifiedAt": "2025-08-05T10:30:00Z"
  }
}
```

**Output (Error):**
```json
{
  "error": "Invalid or expired OTP",
  "success": false
}
```

---

## 📧 Email Endpoints

### 5. Send Direct Email
**Endpoint:** `POST /api/email-direct-message`

**Input:**
```json
{
  "email": "user@example.com",
  "subject": "Welcome to Our Service",
  "message": "Thank you for signing up! We're excited to have you on board."
}
```

**Output (Success):**
```json
{
  "success": true,
  "message": "Email sent successfully",
  "data": {
    "email": "user@example.com",
    "subject": "Welcome to Our Service",
    "messageId": "msg_123456789",
    "sentAt": "2025-08-05T10:30:00Z"
  }
}
```

**Output (Error):**
```json
{
  "error": "Invalid email address format",
  "success": false
}
```

### 6. Send Email OTP
**Endpoint:** `POST /api/send-email-otp`

**Input:**
```json
{
  "email": "user@example.com"
}
```

**Output (Success):**
```json
{
  "success": true,
  "message": "Email OTP sent successfully",
  "data": {
    "email": "user@example.com",
    "expiresIn": 600,
    "sentAt": "2025-08-05T10:30:00Z"
  }
}
```

**Output (Error):**
```json
{
  "error": "Email address is required",
  "success": false
}
```

### 7. Resend Email OTP
**Endpoint:** `POST /api/resend-email-otp`

**Input:**
```json
{
  "email": "user@example.com"
}
```

**Output (Success):**
```json
{
  "success": true,
  "message": "Email OTP resent successfully",
  "data": {
    "email": "user@example.com",
    "expiresIn": 600,
    "attemptCount": 2,
    "resentAt": "2025-08-05T10:35:00Z"
  }
}
```

**Output (Error):**
```json
{
  "error": "Maximum resend attempts exceeded for this email",
  "success": false
}
```

### 8. Verify Email OTP
**Endpoint:** `POST /api/verify-email-otp`

**Input:**
```json
{
  "email": "user@example.com",
  "otp": "654321"
}
```

**Output (Success):**
```json
{
  "success": true,
  "message": "Email OTP verified successfully",
  "data": {
    "email": "user@example.com",
    "verified": true,
    "verifiedAt": "2025-08-05T10:40:00Z",
    "token": "jwt_token_here_if_applicable"
  }
}
```

**Output (Error):**
```json
{
  "error": "Invalid or expired OTP code",
  "success": false
}
```