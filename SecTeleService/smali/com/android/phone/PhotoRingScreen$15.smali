.class Lcom/android/phone/PhotoRingScreen$15;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoRingScreen;->initPhotoRingScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen$15;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1    # Landroid/text/Editable;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$15;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2700(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$15;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2700(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen$15;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/phone/PhotoRingScreen;->access$2800(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$15;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/PhotoRingScreen;->contactName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/PhotoRingScreen;->access$2702(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$15;->this$0:Lcom/android/phone/PhotoRingScreen;

    const-string v1, ""

    # setter for: Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/PhotoRingScreen;->access$1002(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$15;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2800(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$15;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->bEmptyNumErr:Z
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2900(Lcom/android/phone/PhotoRingScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$15;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2800(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$15;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/PhotoRingScreen;->bEmptyNumErr:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhotoRingScreen;->access$2902(Lcom/android/phone/PhotoRingScreen;Z)Z

    :cond_0
    return-void
.end method
