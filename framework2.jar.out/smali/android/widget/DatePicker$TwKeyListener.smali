.class Landroid/widget/DatePicker$TwKeyListener;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwKeyListener"
.end annotation


# instance fields
.field private mNext:I

.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;I)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DatePicker$TwKeyListener;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/widget/DatePicker$TwKeyListener;->mNext:I

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/widget/DatePicker$TwKeyListener;->this$0:Landroid/widget/DatePicker;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/widget/DatePicker;->access$2000(Landroid/widget/DatePicker;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Landroid/widget/DatePicker$TwKeyListener;->this$0:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    :sswitch_1
    move v1, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method
