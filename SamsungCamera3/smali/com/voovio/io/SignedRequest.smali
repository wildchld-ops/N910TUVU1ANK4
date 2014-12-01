.class public abstract Lcom/voovio/io/SignedRequest;
.super Ljava/lang/Object;
.source "SignedRequest.java"


# static fields
.field private static final strSecret:Ljava/lang/String; = "7c23017c2884034da0f178e956989695"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetJSONRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 14

    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v9, 0x0

    const-string v10, "\\."

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Bad formed Signed Request: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v5, v9

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    new-instance v8, Ljava/lang/String;

    aget-object v10, v0, v12

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    const/4 v5, 0x0

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "algorithm"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "HMAC-SHA256"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Unknown algorithm. Expected HMAC-SHA256"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v5, v9

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Error creating JSON Object from Signed Request"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v9

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    const/4 v1, 0x0

    :try_start_1
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "7c23017c2884034da0f178e956989695"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const-string v11, "HmacSHA256"

    invoke-direct {v6, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v10, "HmacSHA256"

    invoke-static {v10}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Bad Signature"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v5, v9

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Unknown hash algorithm HMAC-SHA256"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v5, v9

    goto :goto_0

    :catch_2
    move-exception v3

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Wrong key for HMAC-SHA256"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v5, v9

    goto/16 :goto_0
.end method

.method public static GetSignedRequest(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x8

    :try_start_0
    const-string v8, "algorithm"

    const-string v9, "HMAC-SHA256"

    invoke-virtual {p0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    :try_start_1
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "7c23017c2884034da0f178e956989695"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const-string v9, "HmacSHA256"

    invoke-direct {v3, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v8, "HmacSHA256"

    invoke-static {v8}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_1
    invoke-static {v0, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v1

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Error creating Signed Request (Algorithm)"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Unknown hash algorithm HMAC-SHA256"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Wrong key for HMAC-SHA256"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
