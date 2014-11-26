.class final Lcom/android/mms/ui/MessageUtils$21;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$contact:Lcom/android/mms/data/Contact;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/mms/data/Contact;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$21;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$21;->val$contact:Lcom/android/mms/data/Contact;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$21;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$21;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$21;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getEnableVideoCall(Landroid/content/Context;)Z

    move-result v0

    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v4

    if-nez v2, :cond_4

    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$300()[Z

    move-result-object v2

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$21;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$21;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->registerAsSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v5

    if-nez v2, :cond_5

    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$300()[Z

    move-result-object v2

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$21;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$21;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->registerAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v6

    if-nez v2, :cond_6

    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$300()[Z

    move-result-object v2

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$21;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$21;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/mms/ui/MessageUtils;->registerAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$21;->val$callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$21;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void

    :cond_4
    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_0

    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$300()[Z

    move-result-object v2

    aget-boolean v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$21;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$21;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_1

    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$300()[Z

    move-result-object v2

    aget-boolean v2, v2, v5

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$21;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$21;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->unregisterAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_6
    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_2

    # getter for: Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$300()[Z

    move-result-object v2

    aget-boolean v2, v2, v6

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$21;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$21;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/mms/ui/MessageUtils;->unregisterAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_2
.end method
