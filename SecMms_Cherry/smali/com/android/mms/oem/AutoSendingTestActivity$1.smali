.class Lcom/android/mms/oem/AutoSendingTestActivity$1;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/oem/AutoSendingTestActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/oem/AutoSendingTestActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/oem/AutoSendingTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/oem/AutoSendingTestActivity$1;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity$1;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # invokes: Lcom/android/mms/oem/AutoSendingTestActivity;->getSharedPreference()Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$200(Lcom/android/mms/oem/AutoSendingTestActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "Address"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity$1;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # getter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$300(Lcom/android/mms/oem/AutoSendingTestActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "clear Saved Address"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x1

    return v2
.end method
