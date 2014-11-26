.class Lcom/android/settings/TermsAndConditionActivity$3;
.super Ljava/lang/Object;
.source "TermsAndConditionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TermsAndConditionActivity;->createThreadAndDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TermsAndConditionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/TermsAndConditionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TermsAndConditionActivity$3;->this$0:Lcom/android/settings/TermsAndConditionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/TermsAndConditionActivity$3;->this$0:Lcom/android/settings/TermsAndConditionActivity;

    iget-object v1, p0, Lcom/android/settings/TermsAndConditionActivity$3;->this$0:Lcom/android/settings/TermsAndConditionActivity;

    # getter for: Lcom/android/settings/TermsAndConditionActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/TermsAndConditionActivity;->access$300(Lcom/android/settings/TermsAndConditionActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TermsAndConditionActivity$3;->this$0:Lcom/android/settings/TermsAndConditionActivity;

    # invokes: Lcom/android/settings/TermsAndConditionActivity;->getFilePath()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/TermsAndConditionActivity;->access$400(Lcom/android/settings/TermsAndConditionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/TermsAndConditionActivity;->s:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/TermsAndConditionActivity;->access$102(Lcom/android/settings/TermsAndConditionActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/TermsAndConditionActivity$3;->this$0:Lcom/android/settings/TermsAndConditionActivity;

    # getter for: Lcom/android/settings/TermsAndConditionActivity;->handler_loading:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/TermsAndConditionActivity;->access$500(Lcom/android/settings/TermsAndConditionActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
