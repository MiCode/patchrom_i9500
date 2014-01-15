.class Lcom/android/settings_ex/wifi/WifiSettings$25;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 3057
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 3059
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    iget v12, v12, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    if-nez v12, :cond_5

    .line 3063
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MangeNetwork dialog bttn clicked: button = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 3065
    const-string v12, "WifiSettings"

    const-string v13, "COnnect button clicked  in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v12

    const v13, 0x7fffffff

    if-ne v12, v13, :cond_1

    .line 3067
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3248
    :cond_0
    :goto_0
    return-void

    .line 3069
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3070
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1200(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v13, v14}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1300(Lcom/android/settings_ex/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3072
    :cond_2
    const/4 v12, -0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    .line 3073
    const-string v12, "WifiSettings"

    const-string v13, "Neutral edit  button clicked  in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2600(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 3075
    :cond_3
    const/4 v12, -0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 3076
    const-string v12, "WifiSettings"

    const-string v13, "Remove button clicked  in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/settings_ex/wifi/WifiSettings;->access$800(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3083
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3084
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 3086
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2700(Lcom/android/settings_ex/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 3091
    :cond_5
    const/4 v12, -0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_7

    sget v12, Lcom/android/settings_ex/wifi/WifiSettings;->forget_network:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    if-nez v12, :cond_7

    .line 3093
    const-string v12, "WifiSettings"

    const-string v13, "negative forget button in connected network dialog in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/settings_ex/wifi/WifiSettings;->access$800(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 3103
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2700(Lcom/android/settings_ex/wifi/WifiSettings;)V

    .line 3104
    const-string v12, " "

    sput-object v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 3107
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    iget v12, v12, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_9

    const/4 v2, 0x1

    .line 3109
    .local v2, forgetable:Z
    :goto_1
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_a

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    if-nez v12, :cond_a

    sget v12, Lcom/android/settings_ex/wifi/WifiSettings;->edit_network:I

    if-nez v12, :cond_a

    .line 3111
    const-string v12, "WifiSettings"

    const-string v13, "forget button in connected network dialog in normal wifi settings"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_FORGET"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/settings_ex/wifi/WifiSettings;->access$800(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 3122
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2700(Lcom/android/settings_ex/wifi/WifiSettings;)V

    .line 3123
    const-string v12, " "

    sput-object v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 3107
    .end local v2           #forgetable:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 3125
    .restart local v2       #forgetable:Z
    :cond_a
    const/4 v12, -0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_b

    sget-boolean v12, Lcom/android/settings_ex/wifi/WifiSettings;->vzwViewFlag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 3126
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_VIEW"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    const-string v12, "WifiSettings"

    const-string v13, "View button in connected netork dialog in normal wifi settings"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V
    invoke-static {v12, v13, v14, v15}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2800(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    .line 3129
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings_ex/wifi/WifiSettings;->vzwViewFlag:Z

    goto/16 :goto_0

    .line 3130
    :cond_b
    const/4 v12, -0x3

    move/from16 v0, p2

    if-eq v0, v12, :cond_c

    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1b

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    if-eqz v12, :cond_1b

    sget v12, Lcom/android/settings_ex/wifi/WifiSettings;->edit_network:I

    if-nez v12, :cond_1b

    .line 3131
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_SUBMIT/BUTTON_CONNECT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    sget-object v10, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 3134
    .local v10, previousPass:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 3135
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const-string v11, ""

    .line 3137
    .local v11, sChangedpassword:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v12, :cond_d

    .line 3138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->changedssid:Ljava/lang/String;

    .line 3141
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    iget v12, v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-ne v12, v13, :cond_e

    const/4 v7, 0x1

    .line 3142
    .local v7, nSecuritysame:Z
    :goto_2
    sget-object v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 3144
    .local v6, nPasswordsame:Z
    if-nez v1, :cond_10

    .line 3145
    const-string v12, "WifiSettings"

    const-string v13, " config null "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2900(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 3147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1200(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v13, v14}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1300(Lcom/android/settings_ex/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 3141
    .end local v6           #nPasswordsame:Z
    .end local v7           #nSecuritysame:Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_2

    :cond_f
    const/4 v7, 0x1

    goto :goto_2

    .line 3149
    .restart local v6       #nPasswordsame:Z
    .restart local v7       #nSecuritysame:Z
    :cond_10
    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_16

    .line 3150
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 3151
    const-string v12, "WifiSettings"

    const-string v13, " mSelectedAccessPoint != null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 3154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 3155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 3157
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2700(Lcom/android/settings_ex/wifi/WifiSettings;)V

    .line 3159
    const/4 v12, -0x1

    move/from16 v0, p2

    if-eq v0, v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_14

    .line 3160
    :cond_12
    const-string v12, "WifiSettings"

    const-string v13, " Uzzal EDIT--> CONNECT clicked."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v12, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3000(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 3164
    .local v3, found:Z
    if-nez v3, :cond_13

    .line 3165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    .line 3166
    .local v9, newNetId:I
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveNetwork():newNetId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3168
    const/4 v12, -0x1

    if-eq v9, v12, :cond_13

    .line 3169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1200(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v13

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v9, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1300(Lcom/android/settings_ex/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3171
    .end local v9           #newNetId:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1200(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v13

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v1, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3100(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2700(Lcom/android/settings_ex/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 3174
    .end local v3           #found:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const v13, 0x7f0902ca

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3175
    .local v5, messageRes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v12}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v5, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 3176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v12, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3000(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 3179
    .restart local v3       #found:Z
    if-nez v3, :cond_15

    .line 3180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    .line 3181
    .restart local v9       #newNetId:I
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveNetwork():newNetId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", and enabled"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3183
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3186
    .end local v9           #newNetId:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2700(Lcom/android/settings_ex/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 3190
    .end local v3           #found:Z
    .end local v5           #messageRes:Ljava/lang/String;
    :cond_16
    const-string v12, "WifiSettings"

    const-string v13, "new network"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    invoke-static {v12, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3200(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    .line 3192
    .local v8, networkId:I
    const/4 v12, -0x1

    if-ne v8, v12, :cond_17

    .line 3193
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v12}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0902cb

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3196
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3197
    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    if-nez v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2900(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 3199
    :cond_18
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_19

    .line 3200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2700(Lcom/android/settings_ex/wifi/WifiSettings;)V

    .line 3202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1200(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v13

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v8, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1300(Lcom/android/settings_ex/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3204
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3205
    .local v4, intent:Landroid/content/Intent;
    const-string v12, "wifi_state"

    const/4 v13, 0x3

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v13}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v12, v13, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->access$000(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V

    .line 3207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2700(Lcom/android/settings_ex/wifi/WifiSettings;)V

    .line 3208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v12, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 3210
    .end local v4           #intent:Landroid/content/Intent;
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const v13, 0x7f0902ca

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3211
    .restart local v5       #messageRes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v12}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v5, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 3212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0

    .line 3215
    .end local v5           #messageRes:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1200(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v13

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v1, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3100(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3216
    sget-object v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    sput-object v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 3220
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #nPasswordsame:Z
    .end local v7           #nSecuritysame:Z
    .end local v8           #networkId:I
    .end local v10           #previousPass:Ljava/lang/String;
    .end local v11           #sChangedpassword:Ljava/lang/String;
    :cond_1b
    const/4 v12, -0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    if-eqz v12, :cond_1d

    .line 3221
    const-string v12, "WifiSettings"

    const-string v13, "onClick() BUTTON_CONNECTED_EDIT neutral edit button in unconnected network dialog in manage networks"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    if-eqz v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v12, :cond_1c

    .line 3223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 3224
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "password is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2600(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 3228
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings_ex/wifi/WifiSettings;->vzwEditFlag:Z

    .line 3229
    const/4 v12, 0x0

    sput v12, Lcom/android/settings_ex/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0

    .line 3226
    :cond_1c
    const-string v12, "WifiSettings"

    const-string v13, "   mNewDialog.mPasswordView is null 1 "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3230
    :cond_1d
    const/4 v12, -0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_1f

    sget-boolean v12, Lcom/android/settings_ex/wifi/WifiSettings;->vzwEditFlag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1f

    .line 3231
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_EDIT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    if-eqz v12, :cond_1e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v12, :cond_1e

    .line 3233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 3234
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "password is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2600(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 3238
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings_ex/wifi/WifiSettings;->vzwEditFlag:Z

    goto/16 :goto_0

    .line 3236
    :cond_1e
    const-string v12, "WifiSettings"

    const-string v13, "  mNewDialog.mPasswordView is null  "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3239
    :cond_1f
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_20

    sget v12, Lcom/android/settings_ex/wifi/WifiSettings;->edit_network:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_20

    .line 3240
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_EDIT NW"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings$25;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2600(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 3242
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings_ex/wifi/WifiSettings;->vzwEditFlag:Z

    .line 3243
    const/4 v12, 0x0

    sput v12, Lcom/android/settings_ex/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0

    .line 3245
    :cond_20
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_NEGATIVE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    const/4 v12, 0x0

    sput v12, Lcom/android/settings_ex/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0
.end method
