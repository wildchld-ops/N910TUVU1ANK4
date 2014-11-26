.class public Landroid/webkitsec/JsResult;
.super Ljava/lang/Object;
.source "JsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/JsResult$ResultReceiver;
    }
.end annotation


# instance fields
.field private final mReceiver:Landroid/webkitsec/JsResult$ResultReceiver;

.field private mResult:Z


# direct methods
.method public constructor <init>(Landroid/webkitsec/JsResult$ResultReceiver;)V
    .locals 0
    .param p1    # Landroid/webkitsec/JsResult$ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/JsResult;->mReceiver:Landroid/webkitsec/JsResult$ResultReceiver;

    return-void
.end method

.method private final wakeUp()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/JsResult;->mReceiver:Landroid/webkitsec/JsResult$ResultReceiver;

    invoke-interface {v0, p0}, Landroid/webkitsec/JsResult$ResultReceiver;->onJsResultComplete(Landroid/webkitsec/JsResult;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/JsResult;->mResult:Z

    invoke-direct {p0}, Landroid/webkitsec/JsResult;->wakeUp()V

    return-void
.end method

.method public final confirm()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/JsResult;->mResult:Z

    invoke-direct {p0}, Landroid/webkitsec/JsResult;->wakeUp()V

    return-void
.end method

.method public final getResult()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/JsResult;->mResult:Z

    return v0
.end method
