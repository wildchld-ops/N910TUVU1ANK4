.class Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;
.super Landroid/database/ContentObserver;
.source "WfcHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WfcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WfcStateObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;->mListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    new-instance v0, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;

    iget-object v1, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;->mListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
