.class final Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;
.super Ljava/lang/Object;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field private final mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public static createFromUrl(Ljava/lang/String;)Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;
    .locals 1

    new-instance v0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;

    invoke-direct {v0, p0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;->mUrl:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;->mUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;->mUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$Request;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method
