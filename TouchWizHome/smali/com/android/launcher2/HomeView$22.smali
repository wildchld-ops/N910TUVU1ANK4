.class Lcom/android/launcher2/HomeView$22;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Lcom/android/launcher2/AppWidgetBinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$info:Lcom/android/launcher2/HomePendingWidget;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomePendingWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$22;->val$info:Lcom/android/launcher2/HomePendingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindFail()V
    .locals 3

    const-string v0, "Launcher.HomeView"

    const-string v1, "Problem binding widget. This should only happen when installed outside of /system/app and user declined authorization."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Not installed with permissions needed for binding widgets and authoization declined"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onBindSuccess(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    iget-object v1, p0, Lcom/android/launcher2/HomeView$22;->val$info:Lcom/android/launcher2/HomePendingWidget;

    # invokes: Lcom/android/launcher2/HomeView;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V
    invoke-static {v0, p1, v1}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;ILcom/android/launcher2/HomePendingWidget;)V

    return-void
.end method
