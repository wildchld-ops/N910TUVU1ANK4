.class Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu$1;
.super Ljava/lang/Object;
.source "TwGLEditQuickSettingsMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->hideHelpText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mIsHelpTextHidedByTimeOut:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;Z)Z

    return-void
.end method
