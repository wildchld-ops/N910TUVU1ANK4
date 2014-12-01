.class Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforeString:Ljava/lang/String;

.field byteArrayName:[B

.field mCurrentString:Ljava/lang/String;

.field needResetMaxLength:Z

.field final synthetic this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->beforeString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->beforeString:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$2000(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$2000(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v3

    if-lez v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$2000(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    if-le v3, v4, :cond_3

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$2000(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$2000(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteArrayName Length is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->access$1200(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    :cond_5
    if-lez v1, :cond_6

    new-array v0, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$2000(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iput-boolean v7, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    goto/16 :goto_0

    :cond_6
    iget-boolean v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    if-eqz v3, :cond_0

    new-array v0, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$2000(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iput-boolean v6, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    goto/16 :goto_0
.end method
