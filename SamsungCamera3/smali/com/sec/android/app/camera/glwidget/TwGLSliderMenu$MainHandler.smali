.class Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;
.super Landroid/os/Handler;
.source "TwGLSliderMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->stopSliderMenuTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/glview/TwGLSlider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/glview/TwGLSlider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
