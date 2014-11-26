.class Landroid/webkitsec/WebViewClassic$DateTimePicker;
.super Landroid/app/Dialog;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateTimePicker"
.end annotation


# instance fields
.field private isClear:Z

.field private isTimePickerShown:Z

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mMonth:I

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mYear:I

.field private mdatetime:I

.field private mhour:I

.field private mminute:I

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isClear:Z

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    new-instance v0, Landroid/webkitsec/WebViewClassic$DateTimePicker$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker$1;-><init>(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    new-instance v0, Landroid/webkitsec/WebViewClassic$DateTimePicker$2;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker$2;-><init>(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$4002(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    return p1
.end method

.method static synthetic access$4102(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$4202(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    return p1
.end method

.method static synthetic access$4300(Landroid/webkitsec/WebViewClassic$DateTimePicker;)Z
    .locals 1
    .param p0    # Landroid/webkitsec/WebViewClassic$DateTimePicker;

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isClear:Z

    return v0
.end method

.method static synthetic access$4302(Landroid/webkitsec/WebViewClassic$DateTimePicker;Z)Z
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isClear:Z

    return p1
.end method

.method static synthetic access$4400(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewClassic$DateTimePicker;

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->updateDate()V

    return-void
.end method

.method static synthetic access$4502(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    return p1
.end method

.method static synthetic access$4602(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    return p1
.end method

.method static synthetic access$4700(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewClassic$DateTimePicker;

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->updateTime()V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V
    .locals 0
    .param p0    # Landroid/webkitsec/WebViewClassic$DateTimePicker;

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->clear()V

    return-void
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1    # I

    const/4 v7, -0x2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    iget v5, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    const-string v2, "Clear"

    new-instance v3, Landroid/webkitsec/WebViewClassic$DateTimePicker$3;

    invoke-direct {v3, p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker$3;-><init>(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V

    invoke-virtual {v0, v7, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    iget v5, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    const-string v2, "Clear"

    new-instance v3, Landroid/webkitsec/WebViewClassic$DateTimePicker$4;

    invoke-direct {v3, p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker$4;-><init>(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V

    invoke-virtual {v1, v7, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1    # I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateDate()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    :goto_0
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mdatetime:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    if-nez v3, :cond_0

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    invoke-direct {p0, v6}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void

    :cond_1
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_1
.end method

.method private updateTime()V
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mdatetime:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_1
    const-string v3, "T"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    invoke-direct {p0, v4}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    invoke-direct {p0, v4}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_0
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    invoke-direct {p0, v4}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    invoke-direct {p0, v4}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public show(ILjava/lang/String;)V
    .locals 11
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    const-string v6, "-"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    :cond_0
    :goto_0
    if-ne p1, v10, :cond_6

    iput v10, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mdatetime:I

    iput-boolean v8, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    invoke-direct {p0, v8}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz p2, :cond_3

    if-ne p1, v9, :cond_3

    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    if-ne p1, v10, :cond_5

    const-string v6, "T"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v6, v3, v8

    if-eqz v6, :cond_4

    aget-object v6, v3, v8

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    :cond_4
    aget-object v6, v3, v9

    if-eqz v6, :cond_0

    aget-object v6, v3, v9

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v9

    const-string v7, "Z"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method
