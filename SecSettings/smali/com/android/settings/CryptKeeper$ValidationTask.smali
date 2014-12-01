.class Lcom/android/settings/CryptKeeper$ValidationTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->access$000(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "CryptKeeper"

    const-string v5, "Unable to get encryption state properly"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    const-string v3, "CryptKeeper"

    const-string v5, "Validating encryption state."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v3, "CryptKeeper"

    const-string v5, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v3, "CryptKeeper"

    const-string v5, "Data partition is damaged during en/decryption"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v5, 0x1

    # setter for: Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I
    invoke-static {v3, v5}, Lcom/android/settings/CryptKeeper;->access$1002(Lcom/android/settings/CryptKeeper;I)I

    :goto_1
    if-nez v2, :cond_4

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v5, 0x2

    # setter for: Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I
    invoke-static {v3, v5}, Lcom/android/settings/CryptKeeper;->access$1002(Lcom/android/settings/CryptKeeper;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "CryptKeeper"

    const-string v5, "Unable to get encryption state properly"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v5, 0x3

    # setter for: Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I
    invoke-static {v3, v5}, Lcom/android/settings/CryptKeeper;->access$1002(Lcom/android/settings/CryptKeeper;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$ValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/CryptKeeper;->mValidationComplete:Z
    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->access$1102(Lcom/android/settings/CryptKeeper;Z)Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CryptKeeper"

    const-string v1, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->setupUi()V
    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$1200(Lcom/android/settings/CryptKeeper;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I
    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->access$1002(Lcom/android/settings/CryptKeeper;I)I

    const-string v0, "CryptKeeper"

    const-string v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$ValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
