.class Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$2;
.super Ljava/lang/Object;
.source "TwGLGolfMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .param p1    # Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setGolfImageLeftRight(I)V

    const/4 v0, 0x1

    return v0
.end method
