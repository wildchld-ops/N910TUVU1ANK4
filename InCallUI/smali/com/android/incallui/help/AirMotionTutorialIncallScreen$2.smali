.class Lcom/android/incallui/help/AirMotionTutorialIncallScreen$2;
.super Ljava/lang/Object;
.source "AirMotionTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/AirMotionTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/AirMotionTutorialIncallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen$2;->this$0:Lcom/android/incallui/help/AirMotionTutorialIncallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen$2;->this$0:Lcom/android/incallui/help/AirMotionTutorialIncallScreen;

    iget-boolean v0, v0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->beforeMotion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen$2;->this$0:Lcom/android/incallui/help/AirMotionTutorialIncallScreen;

    const v1, 0x7f0900f2

    # invokes: Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->displayToast(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->access$000(Lcom/android/incallui/help/AirMotionTutorialIncallScreen;I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
