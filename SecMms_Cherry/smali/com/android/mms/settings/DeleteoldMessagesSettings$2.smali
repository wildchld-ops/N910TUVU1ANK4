.class Lcom/android/mms/settings/DeleteoldMessagesSettings$2;
.super Ljava/lang/Object;
.source "DeleteoldMessagesSettings.java"

# interfaces
.implements Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/settings/DeleteoldMessagesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/DeleteoldMessagesSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/DeleteoldMessagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings$2;->this$0:Lcom/android/mms/settings/DeleteoldMessagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings$2;->this$0:Lcom/android/mms/settings/DeleteoldMessagesSettings;

    # getter for: Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->access$200(Lcom/android/mms/settings/DeleteoldMessagesSettings;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings$2;->this$0:Lcom/android/mms/settings/DeleteoldMessagesSettings;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/util/Recycler;->setMessageLimit(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings$2;->this$0:Lcom/android/mms/settings/DeleteoldMessagesSettings;

    # invokes: Lcom/android/mms/settings/DeleteoldMessagesSettings;->setSmsDisplayLimit()V
    invoke-static {v0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->access$300(Lcom/android/mms/settings/DeleteoldMessagesSettings;)V

    return-void
.end method
