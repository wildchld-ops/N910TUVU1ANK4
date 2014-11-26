.class final Lcom/absolute/android/sslutil/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field final synthetic a:Lcom/absolute/android/sslutil/SslUtil;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/absolute/android/sslutil/SslUtil;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/sslutil/a;->a:Lcom/absolute/android/sslutil/SslUtil;

    iput-object p2, p0, Lcom/absolute/android/sslutil/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/absolute/android/sslutil/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/absolute/android/sslutil/a;->b:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/absolute/android/sslutil/a;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
