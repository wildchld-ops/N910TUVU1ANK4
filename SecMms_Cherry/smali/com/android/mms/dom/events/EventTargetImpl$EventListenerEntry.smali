.class Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
.super Ljava/lang/Object;
.source "EventTargetImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/events/EventTargetImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventListenerEntry"
.end annotation


# instance fields
.field final mListener:Lorg/w3c/dom/events/EventListener;

.field final mType:Ljava/lang/String;

.field final mUseCapture:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Lorg/w3c/dom/events/EventListener;
    .param p3    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mListener:Lorg/w3c/dom/events/EventListener;

    iput-boolean p3, p0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mUseCapture:Z

    return-void
.end method
