.class Lcom/android/settings_ex/applications/ManageApplications$TabInfo$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo$1;->this$0:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo$1;->this$0:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->handleRunningProcessesAvail()V

    .line 228
    return-void
.end method
