.class Lcom/android/phone/PhotoringPhrasesEdit$1;
.super Ljava/lang/Object;
.source "PhotoringPhrasesEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoringPhrasesEdit;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoringPhrasesEdit;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoringPhrasesEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoringPhrasesEdit$1;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit$1;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    # getter for: Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I
    invoke-static {v2}, Lcom/android/phone/PhotoringPhrasesEdit;->access$000(Lcom/android/phone/PhotoringPhrasesEdit;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit$1;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    # getter for: Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;
    invoke-static {v2}, Lcom/android/phone/PhotoringPhrasesEdit;->access$100(Lcom/android/phone/PhotoringPhrasesEdit;)Lcom/android/phone/PhotoringPhrase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit$1;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhotoringPhrasesEdit;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PhotoringPhrasesEdit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t play video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhotoringPhrasesEdit$1;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    # getter for: Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;
    invoke-static {v4}, Lcom/android/phone/PhotoringPhrasesEdit;->access$100(Lcom/android/phone/PhotoringPhrasesEdit;)Lcom/android/phone/PhotoringPhrase;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
