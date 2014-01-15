.class Lcom/android/settings_ex/FeatureSettings$7;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FeatureSettings;

.field final synthetic val$setting_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FeatureSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iput-object p2, p0, Lcom/android/settings_ex/FeatureSettings$7;->val$setting_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v10, 0x1

    .line 931
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 932
    const-string v8, "air_motion"

    iget-object v9, p0, Lcom/android/settings_ex/FeatureSettings$7;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 933
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 934
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 935
    .local v2, motion_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 936
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 938
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 939
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 940
    .local v4, motion_scroll_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 941
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 943
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 944
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    .local v1, motion_browse_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 946
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 948
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 949
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    .local v3, motion_move_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 951
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 977
    .end local v1           #motion_browse_changed:Landroid/content/Intent;
    .end local v2           #motion_changed:Landroid/content/Intent;
    .end local v3           #motion_move_changed:Landroid/content/Intent;
    .end local v4           #motion_scroll_changed:Landroid/content/Intent;
    :cond_0
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.settings_ex.action.talkback_off"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 978
    .local v7, talk_back_off:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 979
    return-void

    .line 958
    .end local v7           #talk_back_off:Landroid/content/Intent;
    :cond_1
    const-string v8, "air_view"

    iget-object v9, p0, Lcom/android/settings_ex/FeatureSettings$7;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 959
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "finger_air_view"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 961
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 963
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 964
    .end local v0           #finger_air_view_changed:Landroid/content/Intent;
    :cond_2
    const-string v8, "smart_stay"

    iget-object v9, p0, Lcom/android/settings_ex/FeatureSettings$7;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 965
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "intelligent_sleep_mode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 966
    :cond_3
    const-string v8, "smart_pause"

    iget-object v9, p0, Lcom/android/settings_ex/FeatureSettings$7;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 967
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_pause"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 968
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    .local v5, smart_pause_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 970
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 971
    .end local v5           #smart_pause_changed:Landroid/content/Intent;
    :cond_4
    const-string v8, "smart_scroll"

    iget-object v9, p0, Lcom/android/settings_ex/FeatureSettings$7;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 972
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_scroll"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 973
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    .local v6, smart_scroll_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v6, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 975
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings$7;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
