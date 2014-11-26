.class public Lcom/android/keyguard/sec/KeyguardWallpaperUser;
.super Ljava/lang/Object;
.source "KeyguardWallpaperUser.java"


# instance fields
.field private mImagePath:Ljava/lang/String;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->userId:I

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->mImagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->userId:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->mImagePath:Ljava/lang/String;

    return-void
.end method
