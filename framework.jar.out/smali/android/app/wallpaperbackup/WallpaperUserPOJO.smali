.class public Landroid/app/wallpaperbackup/WallpaperUserPOJO;
.super Ljava/lang/Object;
.source "WallpaperUserPOJO.java"


# instance fields
.field private component:Ljava/lang/String;

.field private height:I

.field private name:Ljava/lang/String;

.field private userId:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    iput p2, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    iput-object p3, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    iput p5, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    return-void
.end method


# virtual methods
.method public getComponent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    return v0
.end method

.method public setComponent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    return-void
.end method
