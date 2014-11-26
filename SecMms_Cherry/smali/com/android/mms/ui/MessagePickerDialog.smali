.class public Lcom/android/mms/ui/MessagePickerDialog;
.super Landroid/app/AlertDialog;
.source "MessagePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    }
.end annotation


# static fields
.field private static final NUMBER:Ljava/lang/String; = "number"

.field public static final PICKER_COMPOSER:I = 0x0

.field public static final PICKER_SETTINGS:I = 0x1

.field public static isWrongRange:Z

.field private static mRangeMax:I

.field private static mRangeMin:I


# instance fields
.field private endSel:I

.field private final mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mContext:Landroid/content/Context;

.field private mMaxLimitToast:Landroid/widget/Toast;

.field private mMinLimitToast:Landroid/widget/Toast;

.field private final mNumberPicker:Landroid/widget/NumberPicker;

.field private mOnkeyDown:Z

.field private mPickerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessagePickerDialog;->isWrongRange:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # Ljava/lang/String;
    .param p9    # I

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->endSel:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mOnkeyDown:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    iput p9, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    sput p6, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    sput p5, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-virtual {p0, p8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    const v3, 0x7f0c0182

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v4, -0x2

    const v3, 0x7f0c004e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f040070

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v3, 0x7f0b026e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "inputType=NumberPicker_edittext"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    const/4 v3, 0x1

    if-ne p9, v3, :cond_0

    const v3, 0x7f0b026f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p4}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/MessagePickerDialog$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessagePickerDialog$1;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/MessagePickerDialog$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessagePickerDialog$2;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/MessagePickerDialog$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessagePickerDialog$3;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    new-instance v4, Lcom/android/mms/ui/MessagePickerDialog$4;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessagePickerDialog$4;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # Ljava/lang/String;
    .param p8    # I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMinLimitWarning()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMaxLimitWarning()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessagePickerDialog;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessagePickerDialog;

    iget-boolean v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mOnkeyDown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/MessagePickerDialog;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessagePickerDialog;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mOnkeyDown:Z

    return p1
.end method

.method private showMaxLimitWarning()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0226

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c019a

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showMinLimitWarning()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0225

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0199

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearSelection()V
    .locals 3

    :try_start_0
    iget v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->endSel:I

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->endSel:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->endSel:I

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->endSel:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/mms/ui/MessagePickerDialog$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagePickerDialog$5;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/mms/ui/MessagePickerDialog$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagePickerDialog$6;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    if-lt v0, v2, :cond_0

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mOnkeyDown:Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "number"

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setLimitaion(Z)V
    .locals 5
    .param p1    # Z

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    if-eqz v2, :cond_2

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    if-le v2, v0, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMinLimitWarning()V

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearFocus()V

    :cond_2
    return-void

    :cond_3
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_4
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    if-ge v2, v0, :cond_5

    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMaxLimitWarning()V

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    invoke-interface {v2, v0}, Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;->onNumberSet(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1
.end method

.method public storeSelection()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->endSel:I

    return-void
.end method
