.class public Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;
.super Ljava/lang/Object;
.source "ShootingModeItem.java"


# instance fields
.field public final mDownloaded:Z

.field public final mId:I

.field private mIsVisible:Z

.field public final mOrder:I

.field public final mResourceId:I

.field public final mResourcePathName:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;ZIZ)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Z
    .param p6    # I
    .param p7    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mId:I

    iput-object p2, p0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mTitle:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mResourceId:I

    iput-object p4, p0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mResourcePathName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mIsVisible:Z

    iput p6, p0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mOrder:I

    iput-boolean p7, p0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mDownloaded:Z

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mIsVisible:Z

    return v0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mIsVisible:Z

    return-void
.end method
