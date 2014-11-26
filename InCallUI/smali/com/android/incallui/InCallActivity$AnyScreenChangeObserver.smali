.class Lcom/android/incallui/InCallActivity$AnyScreenChangeObserver;
.super Landroid/database/ContentObserver;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnyScreenChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$AnyScreenChangeObserver;->this$0:Lcom/android/incallui/InCallActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    const-string v0, "AnyScreenChangeObserver mSettingAnyScreenRunning : "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$AnyScreenChangeObserver;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->updateFragmentManagers()V
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$700(Lcom/android/incallui/InCallActivity;)V

    return-void
.end method
