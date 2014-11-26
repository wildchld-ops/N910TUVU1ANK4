.class Lcom/android/mms/saverestore/RestorePreviewMessageListItem$1;
.super Ljava/lang/Object;
.source "RestorePreviewMessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/RestorePreviewMessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$1;->this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$1;->this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    # getter for: Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mMessageItem:Lcom/android/mms/saverestore/SavedSmsMessage;
    invoke-static {v3}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->access$000(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Lcom/android/mms/saverestore/SavedSmsMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10080000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v3, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    sget-object v3, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$1;->this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    # getter for: Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->access$100(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$1;->this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    # getter for: Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->access$200(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
