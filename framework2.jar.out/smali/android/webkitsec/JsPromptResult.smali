.class public Landroid/webkitsec/JsPromptResult;
.super Landroid/webkitsec/JsResult;
.source "JsPromptResult.java"


# instance fields
.field private mStringResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkitsec/JsResult$ResultReceiver;)V
    .locals 0
    .param p1    # Landroid/webkitsec/JsResult$ResultReceiver;

    invoke-direct {p0, p1}, Landroid/webkitsec/JsResult;-><init>(Landroid/webkitsec/JsResult$ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Landroid/webkitsec/JsPromptResult;->mStringResult:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkitsec/JsResult;->confirm()V

    return-void
.end method

.method public getStringResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/JsPromptResult;->mStringResult:Ljava/lang/String;

    return-object v0
.end method
