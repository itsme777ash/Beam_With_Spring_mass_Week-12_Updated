% PVC - 3.4e9,1380
% Steel - 210e9,7850
incrementer = 1;
init_freq = 150;
Final_freq = 400;

% plot_Steel = zeros(length(init_freq:1:Final_freq),1);
% plot_PVC = zeros(length(init_freq:1:Final_freq),1);
% plot_Steel_PVC = zeros(length(init_freq:1:Final_freq),1);
plot_Pos_Base = BEAM_MAIN_program(210e9,7850,210e9,7850,-1);
plot_Pos_1 = BEAM_MAIN_program(210e9,7850,210e9,7850,7);
plot_Pos_2 = BEAM_MAIN_program(210e9,7850,210e9,7850,19);
plot_Pos_3 = BEAM_MAIN_program(210e9,7850,210e9,7850,31);
plot_Pos_4 = BEAM_MAIN_program(210e9,7850,210e9,7850,39);
plot_Pos_5 = BEAM_MAIN_program(210e9,7850,210e9,7850,0);
plot_Pos_6 = BEAM_MAIN_program(210e9,7850,210e9,7850,0.1);
%x = linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1);
%semilogy(linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_Base,'black',linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_1,'blue',linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_2,'green',linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_3,'magenta',linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_4,'red',linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_5,'cyan');

%For single springs and one combination
% % semilogy(linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_Base,'black', ...
% %     linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_1,'blue', ...
% %     linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_2,'green', ...
% %     linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_3,'magenta', ...
% %     linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_4,'cyan', ...
% %     linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_5,'red' );

%For combination of springs
semilogy(linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_Base,'black', ...
    linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_5,'red', ...
    linspace(init_freq,Final_freq,((Final_freq-init_freq)/incrementer)+1),plot_Pos_6,'blue');
xlabel('Frequency Applied(Hz)'); ylabel('Normalized Amplitude(Xk/F)');
