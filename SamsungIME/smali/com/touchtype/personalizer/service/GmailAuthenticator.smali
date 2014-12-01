.class public Lcom/touchtype/personalizer/service/GmailAuthenticator;
.super Ljava/lang/Object;
.source "GmailAuthenticator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;

.field private static mRandom:Ljava/security/SecureRandom;


# instance fields
.field private mAuthUrl:Ljava/lang/String;

.field private mParent:Lcom/touchtype/personalizer/PersonalizerActivity;

.field private mResources:Landroid/content/res/Resources;

.field private final mSessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->$assertionsDisabled:Z

    const-class v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->TAG:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mAuthUrl:Ljava/lang/String;

    invoke-static {}, Lcom/touchtype/personalizer/service/GmailAuthenticator;->generateStateString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mParent:Lcom/touchtype/personalizer/PersonalizerActivity;

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&redirect_uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&response_type=token&client_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apps.googleusercontent.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mAuthUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v1, Lcom/touchtype/personalizer/service/GmailAuthenticator;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static generateStateString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mRandom:Ljava/security/SecureRandom;

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x82

    sget-object v2, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mRandom:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mSessionId:Ljava/lang/String;

    return-object v0
.end method
