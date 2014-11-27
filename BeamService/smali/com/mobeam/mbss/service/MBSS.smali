.class public interface abstract Lcom/mobeam/mbss/service/MBSS;
.super Ljava/lang/Object;


# static fields
.field public static final dateFormat:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

.field public static final handlerName:Ljava/lang/String; = "mbss"


# virtual methods
.method public abstract authorize(Lcom/mobeam/mbss/service/DeviceAuth;Lcom/mobeam/mbss/service/AppAuth;)Lcom/mobeam/mbss/service/AppInfo;
.end method

.method public abstract getMessages(Lcom/mobeam/mbss/service/DeviceAuth;JLjava/lang/String;)Lcom/mobeam/mbss/service/PullMessages;
.end method

.method public abstract registerDevice(Lcom/mobeam/mbss/service/DeviceData;Ljava/lang/String;)Lcom/mobeam/mbss/service/DeviceConf;
.end method

.method public abstract report(Lcom/mobeam/mbss/service/DeviceAuth;[Lcom/mobeam/mbss/service/BeamReport;)Lcom/mobeam/mbss/service/ReportResp;
.end method
