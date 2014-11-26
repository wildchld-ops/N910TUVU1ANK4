.class public Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;
.super Landroid/text/InputFilter$LengthFilter;
.source "ByteUtf8CombinedFilterWithDialog.java"


# static fields
.field public static final CHARACTER:I = 0x1

.field public static final KSC5601:I = 0x3

.field public static final LENGTH:I = 0x4

.field static final TAG:Ljava/lang/String; = "Mms/ByteUtf8CombinedFilterWithDialog"

.field public static final UTF8:I = 0x2


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private final mMax:I

.field private mToast:Landroid/widget/Toast;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mType:I

    iput-object p1, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mMax:I

    iput p3, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mType:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 16
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/text/Spanned;
    .param p5    # I
    .param p6    # I

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v14, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v14

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v14}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mType:I

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFwEmoji()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {v10}, Lcom/android/mms/ui/EmoticonList;->hasEmojiString(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v13, "Mms/ByteUtf8CombinedFilterWithDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mType_before :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mType:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mType:I

    packed-switch v13, :pswitch_data_0

    :cond_1
    :goto_1
    const-string v13, "Mms/ByteUtf8CombinedFilterWithDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mType_after :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mType:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mType:I

    packed-switch v13, :pswitch_data_1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->showDialog()V

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v13, "imeAction:initComposing"

    invoke-virtual {v11, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_3

    :cond_2
    const-string v10, ""

    :cond_3
    move-object v13, v10

    :goto_3
    return-object v13

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p4 .. p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    :try_start_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "utf-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v4, v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "utf-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v7, v13

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "utf-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v6, v13
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    sub-int v13, v4, v6

    add-int v5, v13, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mMax:I

    if-le v5, v13, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mMax:I

    sub-int v13, v5, v13

    sub-int v3, v7, v13

    goto/16 :goto_1

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :pswitch_1
    invoke-static {v10}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mMax:I

    if-le v5, v13, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mMax:I

    sub-int v13, v5, v13

    sub-int v3, v7, v13

    goto/16 :goto_1

    :pswitch_2
    if-lez v3, :cond_4

    new-instance v10, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13, v3}, Lcom/android/mms/util/StringUtils;->cutUtf8ByByte([BI)[B

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_2

    :cond_4
    invoke-interface/range {p4 .. p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSizeKsc5601(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showDialog()V
    .locals 7

    iget-object v0, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    :goto_0
    iget-object v0, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->showToast()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0306

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0148

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog$1;

    invoke-direct {v3, p0}, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog$1;-><init>(Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;)V

    new-instance v4, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog$2;

    invoke-direct {v4, p0}, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog$2;-><init>(Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;)V

    new-instance v5, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog$3;

    invoke-direct {v5, p0}, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog$3;-><init>(Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method

.method public showToast()V
    .locals 4

    const v3, 0x7f0c039a

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mToast:Landroid/widget/Toast;

    :goto_2
    iget-object v1, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method
