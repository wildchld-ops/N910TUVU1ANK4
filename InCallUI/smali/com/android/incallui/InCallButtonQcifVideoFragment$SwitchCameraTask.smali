.class Lcom/android/incallui/InCallButtonQcifVideoFragment$SwitchCameraTask;
.super Landroid/os/AsyncTask;
.source "InCallButtonQcifVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallButtonQcifVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchCameraTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallButtonQcifVideoFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/InCallButtonQcifVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment$SwitchCameraTask;->this$0:Lcom/android/incallui/InCallButtonQcifVideoFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/InCallButtonQcifVideoFragment;Lcom/android/incallui/InCallButtonQcifVideoFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallButtonQcifVideoFragment$SwitchCameraTask;-><init>(Lcom/android/incallui/InCallButtonQcifVideoFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallButtonQcifVideoFragment$SwitchCameraTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment$SwitchCameraTask;->this$0:Lcom/android/incallui/InCallButtonQcifVideoFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->switchCamera()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallButtonQcifVideoFragment$SwitchCameraTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
