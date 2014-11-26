.class public Lcom/android/mms/util/LengthFilterWithDialog;
.super Landroid/text/InputFilter$LengthFilter;
.source "LengthFilterWithDialog.java"


# static fields
.field public static final CHARACTER:I = 0x1

.field public static final KSC5601:I = 0x3

.field public static final LENGTH:I = 0x4

.field public static final UTF8:I = 0x2


# instance fields
.field private final ACTIVITY_MESSAGING_PREF:Ljava/lang/String;

.field private final ACTIVITY_MESSAGING_TAB_PREF:Ljava/lang/String;

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

    const-string v0, "com.android.mms.ui.MessagingPreferenceActivity"

    iput-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->ACTIVITY_MESSAGING_PREF:Ljava/lang/String;

    const-string v0, "com.android.mms.ui.MessagingPreferenceTabActivity"

    iput-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->ACTIVITY_MESSAGING_TAB_PREF:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mType:I

    iput-object p1, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mMax:I

    iput p3, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mType:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 14
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/text/Spanned;
    .param p5    # I
    .param p6    # I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v12, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v12

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v12}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "com.android.mms.ui.MessagingPreferenceActivity"

    iget-object v12, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "com.android.mms.ui.MessagingPreferenceTabActivity"

    iget-object v12, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const/4 v7, 0x0

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v11

    if-nez v11, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    :goto_0
    invoke-static {v7}, Lcom/android/mms/ui/SignaturePreference;->disableOkButton(I)V

    :cond_1
    iget v11, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mType:I

    packed-switch v11, :pswitch_data_0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v11

    :goto_1
    return-object v11

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_3

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v11

    sub-int v12, p6, p5

    if-ne v11, v12, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    goto :goto_0

    :cond_3
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v7

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    :cond_4
    :goto_2
    iget v11, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mMax:I

    if-gt v8, v11, :cond_5

    if-eqz v2, :cond_c

    :cond_5
    iget v11, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mMax:I

    sub-int v11, v8, v11

    sub-int v9, v10, v11

    iget v11, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mType:I

    packed-switch v11, :pswitch_data_1

    :goto_3
    invoke-virtual {p0}, Lcom/android/mms/util/LengthFilterWithDialog;->showDialog()V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v11, "imeAction:initComposing"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_6

    const-string v4, ""

    :cond_6
    move-object v11, v4

    goto :goto_1

    :pswitch_1
    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getByteSizeUtf8(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/util/TelephonyUtils;->getByteSizeUtf8(Ljava/lang/String;)I

    move-result v10

    goto :goto_2

    :pswitch_2
    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v10

    goto :goto_2

    :pswitch_3
    iget v11, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mMax:I

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v12

    sub-int v13, p6, p5

    sub-int/2addr v12, v13

    sub-int v6, v11, v12

    if-gtz v6, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    if-gtz v6, :cond_8

    const-string v4, ""

    goto :goto_2

    :cond_8
    sub-int v11, p3, p2

    if-ge v6, v11, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :pswitch_4
    const/4 v11, 0x0

    invoke-interface {p1, v11, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSizeUtf8(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSizeKsc5601(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_7
    iget v11, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mMax:I

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v12

    sub-int v13, p6, p5

    sub-int/2addr v12, v13

    sub-int v6, v11, v12

    if-gtz v6, :cond_9

    const-string v4, ""

    goto/16 :goto_3

    :cond_9
    sub-int v11, p3, p2

    if-lt v6, v11, :cond_a

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_a
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_b

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public showDialog()V
    .locals 7

    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    :goto_0
    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/util/LengthFilterWithDialog;->showToast()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

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

    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/mms/util/LengthFilterWithDialog$1;

    invoke-direct {v3, p0}, Lcom/android/mms/util/LengthFilterWithDialog$1;-><init>(Lcom/android/mms/util/LengthFilterWithDialog;)V

    new-instance v4, Lcom/android/mms/util/LengthFilterWithDialog$2;

    invoke-direct {v4, p0}, Lcom/android/mms/util/LengthFilterWithDialog$2;-><init>(Lcom/android/mms/util/LengthFilterWithDialog;)V

    new-instance v5, Lcom/android/mms/util/LengthFilterWithDialog$3;

    invoke-direct {v5, p0}, Lcom/android/mms/util/LengthFilterWithDialog$3;-><init>(Lcom/android/mms/util/LengthFilterWithDialog;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method

.method public showToast()V
    .locals 4

    const v3, 0x7f0c039a

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

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
    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    :goto_2
    iget-object v1, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method
