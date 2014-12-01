.class Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Container"
.end annotation


# static fields
.field static final OPTGROUP:I = -0x1

.field static final OPTION_DISABLED:I = 0x0

.field static final OPTION_ENABLED:I = 0x1


# instance fields
.field mEnabled:I

.field mId:I

.field mString:Ljava/lang/String;

.field final synthetic this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;Landroid/webkitsec/WebViewClassic$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;-><init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->mString:Ljava/lang/String;

    return-object v0
.end method
