#include <stdint.h>
#include <stdio.h>
#include <iostream>
#include <iomanip>

using namespace std;





int main(int argc, char *argv[])
{
	
std::map<int, std::vector<uint32_t> > input_link_data;

		for (int link = 0; link <= 66; link++)
		{
			card.getInputLinkBuffer(link, input_link_data[link]);
		}
	


		char filename[64];
		snprintf(filename, 64, "input_link_data.txt");
		FILE *fd = fopen((lut_file_path + "/" + filename).c_str(), "w");
		if (!fd)
		{
			printf("Error writing output file %s\n", filename);
			return ;
		}

		fprintf(fd, "================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================ \n");
		fprintf(fd, "Input        LINK_00       LINK_01       LINK_02       LINK_03       LINK_04       LINK_05       LINK_06       LINK_07       LINK_08       LINK_09       LINK_10       LINK_11       LINK_12       LINK_13       LINK_14       LINK_15       LINK_16       LINK_17       LINK_18       LINK_19       LINK_20       LINK_21       LINK_22       LINK_23       LINK_24       LINK_25       LINK_26       LINK_27       LINK_28       LINK_29       LINK_30       LINK_31       LINK_32       LINK_33       LINK_34       LINK_35       LINK_36       LINK_37       LINK_38       LINK_39       LINK_40       LINK_41       LINK_42       LINK_43       LINK_44       LINK_45       LINK_46       LINK_47       LINK_48       LINK_49       LINK_50       LINK_51       LINK_52       LINK_53       LINK_54       LINK_55       LINK_56       LINK_57       LINK_58       LINK_59       LINK_60       LINK_61       LINK_62       LINK_63       LINK_64       LINK_65       LINK_66 \n");
		fprintf(fd, "================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================ \n");



		for (int word = 0; word < 1024; word++)
		{
			fprintf(fd, "0x%05x   ", word);
			for (int link = 0; link <= 66; link++)
			{
				fprintf(fd, "0x%08x    ", input_link_data[link][word]);
			}
			fprintf(fd, "\n");
		}

		fprintf(fd, "================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================ \n");

		fclose(fd);

	return 0;
}

