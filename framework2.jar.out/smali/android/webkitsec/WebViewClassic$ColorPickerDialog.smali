.class public Landroid/webkitsec/WebViewClassic$ColorPickerDialog;
.super Landroid/app/Dialog;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorPickerDialog"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, "Pick a Color"

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x1090046

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x1020311

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;-><init>(Landroid/webkitsec/WebViewClassic;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$1;

    invoke-direct {v1, p0, v0}, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$1;-><init>(Landroid/webkitsec/WebViewClassic$ColorPickerDialog;Landroid/widget/GridView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$2;

    invoke-direct {v1, p0}, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$2;-><init>(Landroid/webkitsec/WebViewClassic$ColorPickerDialog;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
