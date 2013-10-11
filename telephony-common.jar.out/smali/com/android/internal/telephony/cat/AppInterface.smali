.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final CAT_CMD_ACTION2:Ljava/lang/String; = "android.intent.action.stk2.command"

.field public static final CAT_CMD_ACTIVATE:Ljava/lang/String; = "android.intent.action.stk.activate"

.field public static final CAT_EXTRA_CAT_CMD:Ljava/lang/String; = "STK CMD"

.field public static final CAT_EXTRA_SIM_ID:Ljava/lang/String; = "simId"

.field public static final CAT_EXTRA_SIM_SLOT:Ljava/lang/String; = "simSlot"

.field public static final CAT_IDLE_SCREEN_ACTION:Ljava/lang/String; = "android.intent.action.stk.idle_screen"

.field public static final CAT_REMOVE_ACTION2:Ljava/lang/String; = "android.intent.action.stk2.remove"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"

.field public static final CAT_SESSION_END_ACTION2:Ljava/lang/String; = "android.intent.action.stk2.session_end"

.field public static final CHECK_SCREEN_IDLE_ACTION:Ljava/lang/String; = "android.intent.action.stk.check_screen_idle"

.field public static final START_MAIN_ACTIVITY:Ljava/lang/String; = "android.intent.action.stk.start_main_activity"

.field public static final START_MAIN_ACTIVITY2:Ljava/lang/String; = "android.intent.action.stk.start_main_activity2"

.field public static final START_MAIN_ACTIVITY_1:Ljava/lang/String; = "android.intent.action.stk2.start_main_activity"


# virtual methods
.method public abstract isAirplaneMode()Z
.end method

.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract onEventDownload(Lcom/android/internal/telephony/cat/CatEnvelopeMessage;)V
.end method

.method public abstract sendEnvelopeToTriggerBip()V
.end method

.method public abstract sentTerminalResponseForSetupMenu(Z)V
.end method

.method public abstract setEventListChannelStatus(Z)V
.end method

.method public abstract setEventListDataAvailable(Z)V
.end method

.method public abstract triggerCmd(Ljava/lang/String;)V
.end method
