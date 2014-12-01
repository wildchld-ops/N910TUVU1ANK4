.class public Lcom/android/settings/dmr/EditTextWatcher;
.super Ljava/lang/Object;
.source "EditTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mBeforeText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDialog:Landroid/app/Dialog;

.field private mStart:I

.field private mToastLength:Landroid/widget/Toast;

.field private mToastSlash:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dmr/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/settings/dmr/EditTextWatcher;->mToastLength:Landroid/widget/Toast;

    iput-object v0, p0, Lcom/android/settings/dmr/EditTextWatcher;->mToastSlash:Landroid/widget/Toast;

    iput-object v0, p0, Lcom/android/settings/dmr/EditTextWatcher;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/dmr/EditTextWatcher;->mBeforeText:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/dmr/EditTextWatcher;->mStart:I

    iput v1, p0, Lcom/android/settings/dmr/EditTextWatcher;->mCount:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    const/4 v6, 0x0

    const-string v5, "DMR EditTextWatcher"

    const-string v7, "EditTextWatcher: afterTextChanged()"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/dmr/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    instance-of v5, v5, Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x20

    if-ne v5, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/dmr/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    check-cast v5, Landroid/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_4

    if-eq v3, v4, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "DMR EditTextWatcher"

    const-string v7, "EditTextWatcher: Device Name Error: remove all \'/\'"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "/"

    const-string v7, ""

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {p1, v6, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    iget-object v5, p0, Lcom/android/settings/dmr/EditTextWatcher;->mToastSlash:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_2
    const/16 v5, 0x37

    if-le v3, v5, :cond_3

    const-string v5, "DMR EditTextWatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EditTextWatcher: Device Name Limit is 55. text length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/settings/dmr/EditTextWatcher;->mCount:I

    if-lez v5, :cond_5

    iget v5, p0, Lcom/android/settings/dmr/EditTextWatcher;->mStart:I

    if-ltz v5, :cond_5

    const-string v5, "DMR EditTextWatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EditTextWatcher: start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/dmr/EditTextWatcher;->mStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/dmr/EditTextWatcher;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/settings/dmr/EditTextWatcher;->mStart:I

    iget v6, p0, Lcom/android/settings/dmr/EditTextWatcher;->mCount:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/settings/dmr/EditTextWatcher;->mStart:I

    iget v7, p0, Lcom/android/settings/dmr/EditTextWatcher;->mCount:I

    add-int/2addr v6, v7

    const-string v7, ""

    invoke-interface {p1, v5, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_2
    iget-object v5, p0, Lcom/android/settings/dmr/EditTextWatcher;->mToastLength:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void

    :cond_4
    move v5, v6

    goto/16 :goto_1

    :cond_5
    const-string v5, "DMR EditTextWatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EditTextWatcher: Invalid value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/dmr/EditTextWatcher;->mStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/dmr/EditTextWatcher;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dmr/EditTextWatcher;->mBeforeText:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/dmr/EditTextWatcher;->mStart:I

    iput p4, p0, Lcom/android/settings/dmr/EditTextWatcher;->mCount:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setDialog(Landroid/app/Dialog;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/settings/dmr/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/dmr/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09123d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x37

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dmr/EditTextWatcher;->mToastLength:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/settings/dmr/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f091251

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dmr/EditTextWatcher;->mToastSlash:Landroid/widget/Toast;

    iput-object p2, p0, Lcom/android/settings/dmr/EditTextWatcher;->mContext:Landroid/content/Context;

    return-void
.end method
