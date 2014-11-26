.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyledTextDialog"
.end annotation


# static fields
.field private static final TYPE_BACKGROUND:I = 0x1

.field private static final TYPE_FOREGROUND:I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlignNames:[Ljava/lang/CharSequence;

.field private mAlignTitle:Ljava/lang/CharSequence;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mColorDefaultMessage:Ljava/lang/CharSequence;

.field private mColorInts:[Ljava/lang/CharSequence;

.field private mColorNames:[Ljava/lang/CharSequence;

.field private mColorTitle:Ljava/lang/CharSequence;

.field private mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field private mMarqueeNames:[Ljava/lang/CharSequence;

.field private mMarqueeTitle:Ljava/lang/CharSequence;

.field private mSizeDisplayInts:[Ljava/lang/CharSequence;

.field private mSizeNames:[Ljava/lang/CharSequence;

.field private mSizeSendInts:[Ljava/lang/CharSequence;

.field private mSizeTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0
    .param p1    # Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    return-void
.end method

.method static synthetic access$1300(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Lcom/android/ex/editstyledtext/EditStyledText;
    .locals 1
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;
    .param p1    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowBackgroundColorAlertDialog()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowAlignAlertDialog()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowMarqueeAlertDialog()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowForegroundColorAlertDialog()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .param p0    # Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowSizeAlertDialog()V

    return-void
.end method

.method private buildAndShowColorDialogue(ILjava/lang/CharSequence;[I)V
    .locals 12
    .param p1    # I
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # [I

    const/4 v3, 0x5

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/16 v10, 0x32

    # invokes: Lcom/android/ex/editstyledtext/EditStyledText;->dipToPx(I)I
    invoke-static {v9, v10}, Lcom/android/ex/editstyledtext/EditStyledText;->access$1400(Lcom/android/ex/editstyledtext/EditStyledText;I)I

    move-result v2

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v10, 0x2

    # invokes: Lcom/android/ex/editstyledtext/EditStyledText;->dipToPx(I)I
    invoke-static {v9, v10}, Lcom/android/ex/editstyledtext/EditStyledText;->access$1400(Lcom/android/ex/editstyledtext/EditStyledText;I)I

    move-result v0

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/16 v10, 0xf

    # invokes: Lcom/android/ex/editstyledtext/EditStyledText;->dipToPx(I)I
    invoke-static {v9, v10}, Lcom/android/ex/editstyledtext/EditStyledText;->access$1400(Lcom/android/ex/editstyledtext/EditStyledText;I)I

    move-result v1

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$3;

    invoke-direct {v11, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$3;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v8, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    array-length v9, p3

    if-ge v7, v9, :cond_3

    rem-int/lit8 v9, v7, 0x5

    if-nez v9, :cond_0

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v4, Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setHeight(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setWidth(I)V

    new-instance v5, Lcom/android/ex/editstyledtext/EditStyledText$ColorPaletteDrawable;

    aget v9, p3, v7

    invoke-direct {v5, v9, v2, v2, v0}, Lcom/android/ex/editstyledtext/EditStyledText$ColorPaletteDrawable;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    aget v9, p3, v7

    invoke-virtual {v4, v9}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    if-nez p1, :cond_2

    new-instance v9, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$4;

    invoke-direct {v9, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$4;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    new-instance v9, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;

    invoke-direct {v9, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    if-ne p1, v9, :cond_5

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorDefaultMessage:Ljava/lang/CharSequence;

    new-instance v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$6;

    invoke-direct {v11, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$6;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$8;

    invoke-direct {v10, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$8;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_5
    if-nez p1, :cond_4

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorDefaultMessage:Ljava/lang/CharSequence;

    new-instance v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$7;

    invoke-direct {v11, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$7;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method private buildDialogue(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # [Ljava/lang/CharSequence;
    .param p3    # Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$1;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$1;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2, p3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$2;

    invoke-direct {v1, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$2;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private checkAlignAlertParams()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "EditStyledText"

    const-string v2, "--- checkAlignAlertParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlignTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    const-string v1, "EditStyledText"

    const-string v2, "--- align alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkColorAlertParams()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "EditStyledText"

    const-string v2, "--- checkParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorNames:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "EditStyledText"

    const-string v2, "--- color alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorNames:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_3

    const-string v1, "EditStyledText"

    const-string v2, "--- the length of color alert params are different."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkMarqueeAlertParams()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "EditStyledText"

    const-string v2, "--- checkMarqueeAlertParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mMarqueeTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    const-string v1, "EditStyledText"

    const-string v2, "--- Marquee alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkSizeAlertParams()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "EditStyledText"

    const-string v2, "--- checkParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeSendInts:[Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "EditStyledText"

    const-string v2, "--- size alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeSendInts:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_3

    const-string v1, "EditStyledText"

    const-string v2, "--- the length of size alert params are different."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onShowAlignAlertDialog()V
    .locals 3

    const-string v0, "EditStyledText"

    const-string v1, "--- onShowAlignAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->checkAlignAlertParams()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlignTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlignNames:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$10;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$10;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildDialogue(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private onShowBackgroundColorAlertDialog()V
    .locals 4

    const-string v2, "EditStyledText"

    const-string v3, "--- onShowBackgroundColorAlertDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->checkColorAlertParams()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    array-length v2, v2

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/high16 v3, 0x1000000

    sub-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildAndShowColorDialogue(ILjava/lang/CharSequence;[I)V

    goto :goto_0
.end method

.method private onShowForegroundColorAlertDialog()V
    .locals 4

    const-string v2, "EditStyledText"

    const-string v3, "--- onShowForegroundColorAlertDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->checkColorAlertParams()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    array-length v2, v2

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/high16 v3, 0x1000000

    sub-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildAndShowColorDialogue(ILjava/lang/CharSequence;[I)V

    goto :goto_0
.end method

.method private onShowMarqueeAlertDialog()V
    .locals 3

    const-string v0, "EditStyledText"

    const-string v1, "--- onShowMarqueeAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->checkMarqueeAlertParams()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mMarqueeTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mMarqueeNames:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$11;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$11;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildDialogue(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private onShowSizeAlertDialog()V
    .locals 3

    const-string v0, "EditStyledText"

    const-string v1, "--- onShowSizeAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->checkSizeAlertParams()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$9;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$9;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildDialogue(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public setAlignAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlignTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlignNames:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1    # Landroid/app/AlertDialog$Builder;

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setColorAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # [Ljava/lang/CharSequence;
    .param p3    # [Ljava/lang/CharSequence;
    .param p4    # Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorNames:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorDefaultMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMarqueeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mMarqueeTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mMarqueeNames:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setSizeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # [Ljava/lang/CharSequence;
    .param p3    # [Ljava/lang/CharSequence;
    .param p4    # [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeSendInts:[Ljava/lang/CharSequence;

    return-void
.end method
