.class public Landroid/text/method/SmileyPickerDialog;
.super Landroid/app/Dialog;
.source "SmileyPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/SmileyPickerDialog$OptionsAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_SMILEYPICKERDIALOG_SHOW_STATE:Ljava/lang/String; = "android.text.method.SMILEYPICKERDIALOG_SHOW_STATE"

.field private static final INTENT_EXTRA_VISIBLE_STATE:Ljava/lang/String; = "visible"


# instance fields
.field private count:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInsert:Z

.field private mOptions:Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field private mView:Landroid/view/View;

.field private prePosition1:I

.field private prePosition2:I

.field private prePosition3:I

.field private prePosition4:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Z)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/text/Editable;
    .param p4    # Z

    const/4 v2, 0x0

    const v1, 0x1030059

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v1, ":-)#:-(#;-)#:-P#=-O#:-*#:O#B-)#:-$#:-!#:-[#O:-)#:-\\#:\'(#:-X#:-D#o_O#:-/#X-(#:-|#"

    iput-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;

    iput v2, p0, Landroid/text/method/SmileyPickerDialog;->count:I

    iput v2, p0, Landroid/text/method/SmileyPickerDialog;->prePosition1:I

    iput v2, p0, Landroid/text/method/SmileyPickerDialog;->prePosition2:I

    iput v2, p0, Landroid/text/method/SmileyPickerDialog;->prePosition3:I

    iput v2, p0, Landroid/text/method/SmileyPickerDialog;->prePosition4:I

    new-instance v1, Landroid/text/method/SmileyPickerDialog$3;

    invoke-direct {v1, p0}, Landroid/text/method/SmileyPickerDialog$3;-><init>(Landroid/text/method/SmileyPickerDialog;)V

    iput-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Landroid/text/method/SmileyPickerDialog;->mView:Landroid/view/View;

    iput-object p3, p0, Landroid/text/method/SmileyPickerDialog;->mText:Landroid/text/Editable;

    iput-boolean p4, p0, Landroid/text/method/SmileyPickerDialog;->mInsert:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    new-instance v1, Landroid/text/method/SmileyPickerDialog$1;

    invoke-direct {v1, p0}, Landroid/text/method/SmileyPickerDialog$1;-><init>(Landroid/text/method/SmileyPickerDialog;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v1, Landroid/text/method/SmileyPickerDialog$2;

    invoke-direct {v1, p0}, Landroid/text/method/SmileyPickerDialog$2;-><init>(Landroid/text/method/SmileyPickerDialog;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Landroid/text/method/SmileyPickerDialog;Z)V
    .locals 0
    .param p0    # Landroid/text/method/SmileyPickerDialog;
    .param p1    # Z

    invoke-direct {p0, p1}, Landroid/text/method/SmileyPickerDialog;->sendShowState(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/text/method/SmileyPickerDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0    # Landroid/text/method/SmileyPickerDialog;

    iget-object v0, p0, Landroid/text/method/SmileyPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Landroid/text/method/SmileyPickerDialog;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/text/method/SmileyPickerDialog;

    iget-object v0, p0, Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/text/method/SmileyPickerDialog;)I
    .locals 1
    .param p0    # Landroid/text/method/SmileyPickerDialog;

    iget v0, p0, Landroid/text/method/SmileyPickerDialog;->prePosition2:I

    return v0
.end method

.method static synthetic access$302(Landroid/text/method/SmileyPickerDialog;I)I
    .locals 0
    .param p0    # Landroid/text/method/SmileyPickerDialog;
    .param p1    # I

    iput p1, p0, Landroid/text/method/SmileyPickerDialog;->prePosition2:I

    return p1
.end method

.method static synthetic access$400(Landroid/text/method/SmileyPickerDialog;)I
    .locals 1
    .param p0    # Landroid/text/method/SmileyPickerDialog;

    iget v0, p0, Landroid/text/method/SmileyPickerDialog;->prePosition3:I

    return v0
.end method

.method static synthetic access$402(Landroid/text/method/SmileyPickerDialog;I)I
    .locals 0
    .param p0    # Landroid/text/method/SmileyPickerDialog;
    .param p1    # I

    iput p1, p0, Landroid/text/method/SmileyPickerDialog;->prePosition3:I

    return p1
.end method

.method static synthetic access$500(Landroid/text/method/SmileyPickerDialog;)I
    .locals 1
    .param p0    # Landroid/text/method/SmileyPickerDialog;

    iget v0, p0, Landroid/text/method/SmileyPickerDialog;->prePosition4:I

    return v0
.end method

.method static synthetic access$502(Landroid/text/method/SmileyPickerDialog;I)I
    .locals 0
    .param p0    # Landroid/text/method/SmileyPickerDialog;
    .param p1    # I

    iput p1, p0, Landroid/text/method/SmileyPickerDialog;->prePosition4:I

    return p1
.end method

.method private replaceCharacterAndClose(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iget-boolean v1, p0, Landroid/text/method/SmileyPickerDialog;->mInsert:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mText:Landroid/text/Editable;

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_1
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mText:Landroid/text/Editable;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private sendShowState(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.text.method.SMILEYPICKERDIALOG_SHOW_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public countLength(I)I
    .locals 5
    .param p1    # I

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    move v1, p1

    const-string v3, "jang"

    const-string v4, "countLength"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x50

    if-ge v1, v3, :cond_1

    const-string v3, "jang"

    const-string/jumbo v4, "out of bound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    aget-char v3, v0, v1

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/text/method/SmileyPickerDialog;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/text/method/SmileyPickerDialog;->count:I

    :cond_1
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/method/SmileyPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x10900ca

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x10203ec

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v2, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;-><init>(Landroid/text/method/SmileyPickerDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1    # Landroid/widget/AdapterView;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J

    if-nez p3, :cond_0

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0, p3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    invoke-static {v2, p3, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Landroid/text/method/SmileyPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v2, 0x7

    if-lt p3, v2, :cond_1

    const/16 v2, 0xb

    if-gt p3, v2, :cond_1

    add-int/lit8 v2, p3, -0x7

    iget v3, p0, Landroid/text/method/SmileyPickerDialog;->prePosition1:I

    invoke-virtual {p0, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1b

    :goto_1
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    invoke-static {v2, v0, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Landroid/text/method/SmileyPickerDialog;->prePosition1:I

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    if-ne p3, v2, :cond_2

    const/16 v0, 0x30

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p3, -0x1

    iget v3, p0, Landroid/text/method/SmileyPickerDialog;->prePosition1:I

    invoke-virtual {p0, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x4

    goto :goto_1
.end method
