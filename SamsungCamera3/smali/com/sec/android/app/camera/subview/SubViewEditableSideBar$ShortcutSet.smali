.class public Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;
.super Ljava/lang/Object;
.source "SubViewEditableSideBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutSet"
.end annotation


# instance fields
.field public mCommandId:I

.field public mImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->this$0:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    return-void
.end method
