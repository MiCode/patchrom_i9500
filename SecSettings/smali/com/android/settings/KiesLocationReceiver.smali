.class public Lcom/android/settings_ex/KiesLocationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KiesLocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/KiesLocationReceiver$KiesOperation;
    }
.end annotation


# static fields
.field private static final INTENT_KIES_ACTION:Ljava/lang/String; = "ACTION"

.field private static final INTENT_SESSION_KEY:Ljava/lang/String; = "SESSION_KEY"

.field private static final INTENT_SOURCE:Ljava/lang/String; = "SOURCE"

.field private static final INTENT_XML_PATH:Ljava/lang/String; = "SAVE_PATH"

.field private static final REQUEST_BACKUP:Ljava/lang/String; = "android.intent.action.REQUEST_BACKUP_LOCATIONSERVICEVZW"

.field private static final REQUEST_RESTORE:Ljava/lang/String; = "android.intent.action.REQUEST_RESTORE_LOCATIONSERVICEVZW"

.field private static final RESPONSE_BACKUP:Ljava/lang/String; = "android.intent.action.RESPONSE_BACKUP_LOCATIONSERVICEVZW"

.field private static final RESPONSE_RESTORE:Ljava/lang/String; = "android.intent.action.RESPONSE_RESTORE_LOCATIONSERVICEVZW"

.field private static final TAG:Ljava/lang/String; = "KiesLocationReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    const-string v0, "KiesLocationReceiver"

    const-string v1, "exit not supported device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method
