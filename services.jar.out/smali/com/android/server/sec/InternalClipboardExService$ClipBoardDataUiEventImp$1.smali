.class Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;
.super Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

.field final synthetic this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getClipboarddata(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->getClipboarddata(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->removeItem(I)V

    return-void
.end method

.method public removeScrapItem(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->removeScrapItem(I)V

    return-void
.end method

.method public selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    return-void
.end method

.method public selectScrapItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->selectScrapItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    return-void
.end method

.method public setClipboarddata(Landroid/content/ClipData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/sec/clipboard/ClipboardConverter;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipbaordData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    iget-object v1, v1, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/sec/InternalClipboardExService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    :cond_0
    return-void
.end method
