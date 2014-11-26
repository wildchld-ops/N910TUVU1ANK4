.class Landroid/webkitsec/WebViewCore$AutoFillData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AutoFillData"
.end annotation


# instance fields
.field private mPreview:Ljava/lang/String;

.field private mQueryId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkitsec/WebViewCore$AutoFillData;->mQueryId:I

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/WebViewCore$AutoFillData;->mPreview:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/webkitsec/WebViewCore$AutoFillData;->mQueryId:I

    iput-object p2, p0, Landroid/webkitsec/WebViewCore$AutoFillData;->mPreview:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreviewString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore$AutoFillData;->mPreview:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryId()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewCore$AutoFillData;->mQueryId:I

    return v0
.end method
