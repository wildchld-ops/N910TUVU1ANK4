.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarDecorData;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CocktailBarDecorData"
.end annotation


# instance fields
.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/cocktailbar/ICocktailBarDecorManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field cocktailBarDecorFile:Ljava/io/File;

.field height:I

.field name:Ljava/lang/String;

.field type:I

.field userId:I

.field width:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1    # I

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarDecorData;->callbacks:Landroid/os/RemoteCallbackList;

    iput v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarDecorData;->width:I

    iput v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarDecorData;->height:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarDecorData;->type:I

    iput p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarDecorData;->userId:I

    new-instance v0, Ljava/io/File;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailBarDecorDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1000(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cocktailbar_decor"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarDecorData;->cocktailBarDecorFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarDecorData;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarDecorData;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarDecorData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method
